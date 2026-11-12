.class public final synthetic Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$P2pStateListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda16;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda16;->f$1:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onP2pStateAvailable(I)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda16;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda16;->f$1:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->$r8$lambda$Mdl2njrPHy1uTf3iKpp-u__NLU0(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method
