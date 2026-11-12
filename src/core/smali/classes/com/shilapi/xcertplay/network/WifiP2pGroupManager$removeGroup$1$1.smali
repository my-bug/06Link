.class public final Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$removeGroup$1$1;
.super Ljava/lang/Object;
.source "WifiP2pGroupManager.kt"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLjava/lang/String;)V
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
        "com/shilapi/xcertplay/network/WifiP2pGroupManager$removeGroup$1$1",
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
.field final synthetic $latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;


# direct methods
.method constructor <init>(Ljava/util/concurrent/CountDownLatch;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$removeGroup$1$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$removeGroup$1$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    .line 855
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4

    .line 861
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$removeGroup$1$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    # getter for: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->diagnostic:Lkotlin/jvm/functions/Function1;
    invoke-static {v0}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$getDiagnostic$p(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;)Lkotlin/jvm/functions/Function1;

    move-result-object v0

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$removeGroup$1$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    # invokes: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->failureReason(I)Ljava/lang/String;
    invoke-static {v1, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$failureReason(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Wi-Fi P2P remove rejected code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " reason="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    iget-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$removeGroup$1$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess()V
    .locals 1

    .line 857
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$removeGroup$1$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
