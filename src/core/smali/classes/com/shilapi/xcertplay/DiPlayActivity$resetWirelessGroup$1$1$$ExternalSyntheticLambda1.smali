.class public final synthetic Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/net/wifi/p2p/WifiP2pManager;

.field public final synthetic f$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field public final synthetic f$2:Lcom/shilapi/xcertplay/DiPlayActivity;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;J)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iput-object p3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda1;->f$2:Lcom/shilapi/xcertplay/DiPlayActivity;

    iput-wide p4, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda1;->f$3:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 0
    iget-object v0, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda1;->f$0:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda1;->f$1:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    iget-object v2, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda1;->f$2:Lcom/shilapi/xcertplay/DiPlayActivity;

    iget-wide v3, p0, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1$$ExternalSyntheticLambda1;->f$3:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/shilapi/xcertplay/DiPlayActivity$resetWirelessGroup$1$1;->$r8$lambda$NYWLDoGZhuTnG7iqnDkCnlQGHAs(Landroid/net/wifi/p2p/WifiP2pManager;Landroid/net/wifi/p2p/WifiP2pManager$Channel;Lcom/shilapi/xcertplay/DiPlayActivity;J)V

    return-void
.end method
