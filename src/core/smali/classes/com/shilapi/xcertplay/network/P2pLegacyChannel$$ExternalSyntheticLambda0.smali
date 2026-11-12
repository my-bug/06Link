.class public final synthetic Lcom/shilapi/xcertplay/network/P2pLegacyChannel$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/p2p/WifiP2pManager;

.field public final synthetic f$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput p3, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$$ExternalSyntheticLambda0;->f$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget v2, p0, Lcom/shilapi/xcertplay/network/P2pLegacyChannel$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-static {v0, v1, v2, p1}, Lcom/shilapi/xcertplay/network/P2pLegacyChannel;->$r8$lambda$JBi_GfDI7-qbOziHlRiBmyvAoX4(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;ILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
