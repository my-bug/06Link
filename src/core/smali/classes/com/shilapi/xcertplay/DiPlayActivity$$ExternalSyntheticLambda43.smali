.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda43;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$2:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/net/wifi/p2p/WifiP2pManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda43;->f$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda43;->f$1:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda43;->f$2:Landroid/net/wifi/p2p/WifiP2pManager;

    return-void
.end method


# virtual methods
.method public final onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda43;->f$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda43;->f$1:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$$ExternalSyntheticLambda43;->f$2:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {v0, v1, v2, p1}, Lcom/shilapi/xcertplay/DiPlayActivity;->$r8$lambda$NE6cZ3ZiN9Z8iHRwSgRfu1mdvvs(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method
