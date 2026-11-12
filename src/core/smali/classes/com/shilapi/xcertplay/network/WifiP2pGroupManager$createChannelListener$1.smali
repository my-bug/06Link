.class public final Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createChannelListener$1;
.super Ljava/lang/Object;
.source "WifiP2pGroupManager.kt"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->createChannelListener(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/shilapi/xcertplay/network/WifiP2pGroupManager$createChannelListener$1",
        "Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;",
        "onChannelDisconnected",
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
.field final synthetic $attempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

.field final synthetic this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;


# direct methods
.method constructor <init>(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;)V
    .locals 0

    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createChannelListener$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iput-object p2, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createChannelListener$1;->$attempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChannelDisconnected()V
    .locals 4

    .line 345
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createChannelListener$1;->this$0:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;

    iget-object v1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$createChannelListener$1;->$attempt:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Wi-Fi P2P channel disconnected"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    # invokes: Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->failAttempt(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Ljava/io/IOException;)V
    invoke-static {v0, v1, v2}, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;->access$failAttempt(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;Ljava/io/IOException;)V

    return-void
.end method
