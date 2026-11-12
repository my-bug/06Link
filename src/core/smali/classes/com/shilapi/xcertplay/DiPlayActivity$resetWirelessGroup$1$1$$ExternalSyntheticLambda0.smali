.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public final synthetic f$1:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$2:J

.field public final synthetic f$3:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;JLandroid/net/wifi/p2p/WifiP2pManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda0;->f$1:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-wide p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda0;->f$2:J

    iput-object p5, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda0;->f$3:Landroid/net/wifi/p2p/WifiP2pManager;

    return-void
.end method


# virtual methods
.method public final onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda0;->f$0:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda0;->f$1:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-wide v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda0;->f$2:J

    iget-object v4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda0;->f$3:Landroid/net/wifi/p2p/WifiP2pManager;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->$r8$lambda$pINEC1XDFXVcKOa1WERNVOy8mAE(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;JLandroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pGroup;)V

    return-void
.end method
