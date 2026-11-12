.class final Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;
.super Ljava/lang/Object;
.source "WifiP2pGroupManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shilapi/xcertplay/network/WifiP2pGroupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StartAttempt"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0010\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019\"\u0004\u0008\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u001a\u0010\"\u001a\u00020\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010\u0013\"\u0004\u0008$\u0010\u0015\u00a8\u0006%"
    }
    d2 = {
        "Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;",
        "",
        "<init>",
        "()V",
        "channel",
        "Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "getChannel",
        "()Landroid/net/wifi/p2p/WifiP2pManager$Channel;",
        "setChannel",
        "(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V",
        "thread",
        "Landroid/os/HandlerThread;",
        "getThread",
        "()Landroid/os/HandlerThread;",
        "setThread",
        "(Landroid/os/HandlerThread;)V",
        "createSucceeded",
        "",
        "getCreateSucceeded",
        "()Z",
        "setCreateSucceeded",
        "(Z)V",
        "request",
        "Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;",
        "getRequest",
        "()Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;",
        "setRequest",
        "(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;)V",
        "failure",
        "Ljava/io/IOException;",
        "getFailure",
        "()Ljava/io/IOException;",
        "setFailure",
        "(Ljava/io/IOException;)V",
        "stopped",
        "getStopped",
        "setStopped",
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
.field private channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private createSucceeded:Z

.field private failure:Ljava/io/IOException;

.field private request:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;

.field private stopped:Z

.field private thread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChannel()Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 1

    .line 920
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object v0
.end method

.method public final getCreateSucceeded()Z
    .locals 1

    .line 922
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->createSucceeded:Z

    return v0
.end method

.method public final getFailure()Ljava/io/IOException;
    .locals 1

    .line 924
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->failure:Ljava/io/IOException;

    return-object v0
.end method

.method public final getRequest()Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->request:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;

    return-object v0
.end method

.method public final getStopped()Z
    .locals 1

    .line 925
    iget-boolean v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->stopped:Z

    return v0
.end method

.method public final getThread()Landroid/os/HandlerThread;
    .locals 1

    .line 921
    iget-object v0, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->thread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public final setChannel(Landroid/net/wifi/p2p/WifiP2pManager$Channel;)V
    .locals 0

    .line 920
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->channel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-void
.end method

.method public final setCreateSucceeded(Z)V
    .locals 0

    .line 922
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->createSucceeded:Z

    return-void
.end method

.method public final setFailure(Ljava/io/IOException;)V
    .locals 0

    .line 924
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->failure:Ljava/io/IOException;

    return-void
.end method

.method public final setRequest(Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->request:Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$CreateRequest;

    return-void
.end method

.method public final setStopped(Z)V
    .locals 0

    .line 925
    iput-boolean p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->stopped:Z

    return-void
.end method

.method public final setThread(Landroid/os/HandlerThread;)V
    .locals 0

    .line 921
    iput-object p1, p0, Lcom/shilapi/xcertplay/network/WifiP2pGroupManager$StartAttempt;->thread:Landroid/os/HandlerThread;

    return-void
.end method
