.class public final synthetic Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda14;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

.field public final synthetic f$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;


# direct methods
.method public synthetic constructor <init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda14;->f$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda14;->f$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda14;->f$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$$ExternalSyntheticLambda14;->f$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, p1}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->$r8$lambda$1TDka6DReltw4EhF8LdWsOmnZoI(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/Integer;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
