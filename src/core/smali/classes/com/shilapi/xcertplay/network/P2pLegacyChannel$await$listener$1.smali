.class public final Lcom/shilapi/xcertplay/network/P2pLegacyChannel$await$listener$1;
.super Ljava/lang/Object;
.source "P2pLegacyChannel.kt"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->await$shared_release(JLkotlin/jvm/functions/Function1;)Lkotlin/Pair;
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
        "com/shilapi/xcertplay/network/P2pLegacyChannel$await$listener$1",
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

.field final synthetic $result:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lkotlin/Pair<",
            "Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$await$listener$1;->$result:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$await$listener$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$await$listener$1;->$result:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;->FAILED:Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "code="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$await$listener$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$await$listener$1;->$result:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;->OK:Lcom/shilapi/xcertplay/network/P2pLegacyChannel$Outcome;

    const-string v2, "ok"

    invoke-static {v1, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$await$listener$1;->$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
