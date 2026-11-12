.class public final synthetic Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda19;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

.field public final synthetic f$3:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda19;->f$0:Ljava/util/concurrent/CountDownLatch;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda19;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda19;->f$2:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iput-object p4, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda19;->f$3:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-void
.end method


# virtual methods
.method public final onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 4

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda19;->f$0:Ljava/util/concurrent/CountDownLatch;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda19;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda19;->f$2:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iget-object v3, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda19;->f$3:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->$r8$lambda$vs5Bs8h8MjTo0Ld-DwVpoI-mQRM(Ljava/util/concurrent/CountDownLatch;Ljava/lang/String;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method
