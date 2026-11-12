.class public final synthetic Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda18;->f$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda18;->f$1:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda18;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda18;->f$3:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda18;->f$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda18;->f$1:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda18;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda18;->f$3:Ljava/util/concurrent/CountDownLatch;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->$r8$lambda$zGnhHjqcMHqecICkx3yklamBenM(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method
